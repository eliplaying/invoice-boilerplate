---
# date: today
invoice-nr: 02
to:
- Max Mustermann
- Katzendorf 125
- A-1446 Someplace

############################### for no rates
# service:
# - description: "Erster Eintrag"
#   price: 800.00
#   details: 
#    - "Entwurf, Konzept, Ausführung"
# - description: "Reinzeichnung"
#   price: 100.00
#   details:
#     - "Kundenkontakt, Formalisierung"
# - description: "Rabatt"
#   price: -125.00

############################# for rates

rate-service:
- description: "Zweite Leistung"
  rate: 50.00
  units: 35
  details: 
   - "Details erste Leistung"
- description: "Zweite Leistung"
  rate: 50.00
  units: 5
  details:
    - Anpassung Warnsymbol Rufzeichen (Farbe, Position)
    - Kalender Einfärbung in Firmenfarben
- description: "Sonderrabatt"
  rate: -160.00
  units: 1


period: 1. September 2020 -- 2. Oktober 2020


bible: true
daily-verse: "Halte dich nicht selbst für weise; fürchte den HERRN und weiche vom Bösen!"
verse: "Sprüche 3,7"
---