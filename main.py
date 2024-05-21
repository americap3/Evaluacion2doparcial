from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker
import getpass
import os

# Configuración de la conexión
engine_oracle1 = create_engine("oracle+oracledb://system:123@localhost:5432/free")
engine_oracle2 = create_engine("oracle+oracledb://system:123@localhost:5433/free")

Session_oracle1 = sessionmaker(bind=engine_oracle1)
Session_oracle2 = sessionmaker(bind=engine_oracle2)

session_oracle1 = Session_oracle1()
session_oracle2 = Session_oracle2()

def ver_toda_la_tabla():
    try:
        result = session_oracle1.execute(text("SELECT * FROM VG_CUSTOMERS"))
        for row in result:
            print(row)
    except Exception as e:
        print(f"Error al consultar la tabla: {e}")

def insertar_cliente():
    try:
        customer_id = input("Ingrese ID del cliente: ")
        first_name = input("Ingrese Nombre: ")
        last_name = input("Ingrese Apellido: ")
        credit_limit = input("Ingrese Limite de credito: ")
        email = input("Ingrese Email: ")
        income_level = input("Ingrese Nivel de ingresos: ")
        region = input("Ingrese Region: ")

        session_oracle1.execute(text(
            "CALL insert_customer(:customer_id, :first_name, :last_name, :credit_limit, :email, :income_level, :region)"
        ), {
            "customer_id": customer_id,
            "first_name": first_name,
            "last_name": last_name,
            "credit_limit": credit_limit,
            "email": email,
            "income_level": income_level,
            "region": region
        })
        session_oracle1.commit()
        print("Cliente insertado con éxito.")
    except Exception as e:
        session_oracle1.rollback()
        print(f"Error al insertar el cliente: {e}")

def eliminar_cliente():
    try:
        customer_id = input("Ingrese ID del cliente a eliminar: ")

        session_oracle1.execute(text("CALL delete_customer(:customer_id)"), {"customer_id": customer_id})
        session_oracle1.commit()
        print("Cliente eliminado con éxito.")
    except Exception as e:
        session_oracle1.rollback()
        print(f"Error al eliminar el cliente: {e}")

def actualizar_cliente():
    try:
        customer_id = input("Ingrese ID del cliente: ")
        first_name = input("Ingrese Nombre: ")
        last_name = input("Ingrese Apellido: ")
        credit_limit = input("Ingrese Limite de credito: ")
        email = input("Ingrese Email: ")
        income_level = input("Ingrese Nivel de ingresos: ")
        region = input("Ingrese Region: ")

        session_oracle1.execute(text(
            "CALL update_customer(:customer_id, :first_name, :last_name, :credit_limit, :email, :income_level, :region)"
        ), {
            "customer_id": customer_id,
            "first_name": first_name,
            "last_name": last_name,
            "credit_limit": credit_limit,
            "email": email,
            "income_level": income_level,
            "region": region
        })
        session_oracle1.commit()
        print("Cliente actualizado con éxito.")
    except Exception as e:
        session_oracle1.rollback()
        print(f"Error al actualizar el cliente: {e}")


def consultar_cliente():
    try:
        customer_id = input("Ingrese ID del cliente a consultar: ")

        # Llamar al procedimiento almacenado y obtener los resultados
        result = session_oracle1.execute(text(
            "SELECT cust_first_name, cust_last_name, credit_limit, cust_email, income_level, region FROM CUSTOMERS WHERE CUSTOMER_ID = :customer_id"
        ), {"customer_id": customer_id}).fetchone()

        # Verificar si se encontró el cliente
        if result is None:
            print("No se encontró el cliente con el ID proporcionado.")
        else:
            cust_first_name, cust_last_name, credit_limit, cust_email, income_level, region = result
            print(f"ID del cliente: {customer_id}")
            print(f"Nombre: {cust_first_name}")
            print(f"Apellido: {cust_last_name}")
            print(f"Limite de credito: {credit_limit}")
            print(f"Email: {cust_email}")
            print(f"Nivel de ingresos: {income_level}")
            print(f"Region: {region}")

    except Exception as e:
        print(f"Error al consultar el cliente: {e}")


def ver_vista_materializada():
    try:
        result = session_oracle1.execute(text("SELECT * FROM VM_CUSTOMERS"))
        for row in result:
            print(row)
    except Exception as e:
        print(f"Error al consultar la vista materializada: {e}")

def menu():
    while True:
        print("\nMenu:")
        print("1. Ver toda la tabla")
        print("2. Insertar cliente")
        print("3. Eliminar cliente")
        print("4. Actualizar cliente")
        print("5. Consultar cliente")
        print("6. Ver vista materializada")
        print("7. Salir")

        choice = input("Seleccione una opción: ")

        if choice == '1':
            ver_toda_la_tabla()
        elif choice == '2':
            insertar_cliente()
        elif choice == '3':
            eliminar_cliente()
        elif choice == '4':
            actualizar_cliente()
        elif choice == '5':
            consultar_cliente()
        elif choice == '6':
            ver_vista_materializada()
        elif choice == '7':
            break
        else:
            print("Opción no válida. Intente de nuevo.")

if __name__ == "__main__":
    try:
        menu()
    finally:
        # Cerrar sesiones
        session_oracle1.close()
        session_oracle2.close()

