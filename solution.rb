1. TowTruck.all
2. Vehicle.find(3)
3. Vehicle.find_by vin: 'D0985DF1593A350A4'
4. Vehicle.all.order('acquired_at')
5. Vehicle.where(color: 'silver').order('make')
6. Vehicle.where(color: 'red', make: 'Honda', category: 'car')
7. Vehicle.where(category: 'motorcycle').count
8. Vehicle.where(released_at: nil)
9. TowTruck.where('mileage > ?', 200000)
10. TowTruck.where('last_service_at < ?', Time.now.midnight -  8.month)
11. Vehicle.all.average('fee').to_f.round(2)
12. Vehicle.where.not(fee: nil).order('fee DESC').first(3)
13. Vehicle.where.not(is_paid: true, fee: nil)
14. Vehicle.where.not(released_at: nil).order('released_at')
15. Vehicle.where.not(notes: "")
16. Vehicle.where('year < ?',2000).pluck(:vin)
17. Vehicle.where(color: 'silver').order('year').pluck(:make, :model, :year)
18. Vehicle.where(is_paid: true).sum('fee').to_f