import sqlite3


def init_db():
    conn = sqlite3.connect("database.db")
    c = conn.cursor()

    # Create table for normal data
    c.execute("""CREATE TABLE IF NOT EXISTS planets (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    name TEXT NOT NULL,
                    climate TEXT NOT NULL,
                    terrain TEXT NOT NULL
                )""")

    # Create table for the flag
    c.execute("""CREATE TABLE IF NOT EXISTS imperial_secrets (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    secret_type TEXT NOT NULL,
                    code TEXT NOT NULL
                )""")

    # Insert sample data
    planets = [
        ("Tatooine", "Arid", "Desert"),
        ("Hoth", "Frozen", "Tundra, Ice Caves"),
        ("Endor", "Temperate", "Forests, Mountains"),
        ("Naboo", "Temperate", "Grassy Hills, Swamps"),
        ("Coruscant", "Temperate", "Cityscape"),
    ]
    c.executemany(
        "INSERT INTO planets (name, climate, terrain) VALUES (?, ?, ?)", planets
    )

    # Insert the flag
    c.execute(
        "INSERT INTO imperial_secrets (secret_type, code) VALUES ('Death_Star_Override', 'HCS{u53_th3_f0rc3_luk3_but_sqlmap_1s_f4st3r}')"
    )

    conn.commit()
    conn.close()
    print("Database initialized.")


if __name__ == "__main__":
    init_db()
