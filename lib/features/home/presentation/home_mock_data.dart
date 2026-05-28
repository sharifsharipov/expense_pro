import 'package:flutter/material.dart';

// Shared mock data for home feature pages (replace with BLoC/repository later)

const List<String> weekDays = ['Du', 'Se', 'Ch', 'Pa', 'Ju', 'Sh', 'Ya'];
const List<double> weeklyIncomes = [0.0, 0.0, 3200.0, 0.0, 0.0, 0.0, 0.0];

class HomeTransaction {
  const HomeTransaction({
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
    required this.icon,
    required this.color,
    required this.isIncome,
  });

  final String title;
  final String category;
  final double amount;
  final String date;
  final IconData icon;
  final Color color;
  final bool isIncome;
}

class HomeChartCategory {
  const HomeChartCategory({
    required this.label,
    required this.color,
    required this.weeklyData,
  });

  final String label;
  final Color color;
  final List<double> weeklyData;
}

class HomeSpendingCategory {
  const HomeSpendingCategory({
    required this.name,
    required this.percent,
    required this.color,
    required this.amount,
  });

  final String name;
  final double percent;
  final Color color;
  final double amount;
}

const chartCategories = [
  HomeChartCategory(
    label: 'Barchasi',
    color: Color(0xFFDD1470),
    weeklyData: [80.0, 160.0, 120.0, 250.0, 90.0, 190.0, 60.0],
  ),
  HomeChartCategory(
    label: 'Ovqat',
    color: Color(0xFFFF6B6B),
    weeklyData: [15.0, 40.0, 20.0, 55.0, 10.0, 45.0, 0.0],
  ),
  HomeChartCategory(
    label: 'Transport',
    color: Color(0xFF1B93FE),
    weeklyData: [0.0, 30.0, 20.0, 60.0, 20.0, 40.0, 10.0],
  ),
  HomeChartCategory(
    label: 'Kiyim',
    color: Color(0xFFFF9500),
    weeklyData: [20.0, 0.0, 45.0, 30.0, 0.0, 85.0, 0.0],
  ),
  HomeChartCategory(
    label: "Ko'ngilochar",
    color: Color(0xFF7E5FA6),
    weeklyData: [10.0, 25.0, 15.0, 30.0, 15.0, 30.0, 10.0],
  ),
  HomeChartCategory(
    label: 'Obuna',
    color: Color(0xFF00BCD4),
    weeklyData: [35.0, 0.0, 20.0, 0.0, 45.0, 0.0, 0.0],
  ),
];

const mockTransactions = [
  HomeTransaction(
    title: 'Maosh',
    category: 'Barchasi',
    amount: 3200,
    date: '28 May 2026',
    icon: Icons.work_rounded,
    color: Color(0xFF0CB867),
    isIncome: true,
  ),
  HomeTransaction(
    title: 'Tushlik',
    category: 'Ovqat',
    amount: 45,
    date: '27 May 2026',
    icon: Icons.restaurant_rounded,
    color: Color(0xFFFF6B6B),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Metro',
    category: 'Transport',
    amount: 120,
    date: '26 May 2026',
    icon: Icons.directions_car_rounded,
    color: Color(0xFF1B93FE),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Futbolka',
    category: 'Kiyim',
    amount: 85,
    date: '25 May 2026',
    icon: Icons.checkroom_rounded,
    color: Color(0xFFFF9500),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Netflix',
    category: 'Obuna',
    amount: 18,
    date: '24 May 2026',
    icon: Icons.play_circle_rounded,
    color: Color(0xFF00BCD4),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Non va sutlik',
    category: 'Ovqat',
    amount: 18,
    date: '23 May 2026',
    icon: Icons.restaurant_rounded,
    color: Color(0xFFFF6B6B),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Taksi',
    category: 'Transport',
    amount: 35,
    date: '23 May 2026',
    icon: Icons.directions_car_rounded,
    color: Color(0xFF1B93FE),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Spotify',
    category: 'Obuna',
    amount: 10,
    date: '22 May 2026',
    icon: Icons.music_note_rounded,
    color: Color(0xFF00BCD4),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'ChatGPT Plus',
    category: 'Obuna',
    amount: 20,
    date: '22 May 2026',
    icon: Icons.smart_toy_rounded,
    color: Color(0xFF00BCD4),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Shim',
    category: 'Kiyim',
    amount: 60,
    date: '22 May 2026',
    icon: Icons.checkroom_rounded,
    color: Color(0xFFFF9500),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Kino',
    category: "Ko'ngilochar",
    amount: 30,
    date: '21 May 2026',
    icon: Icons.movie_rounded,
    color: Color(0xFF7E5FA6),
    isIncome: false,
  ),
  HomeTransaction(
    title: 'Telefon tarifi',
    category: 'Obuna',
    amount: 7,
    date: '21 May 2026',
    icon: Icons.phone_android_rounded,
    color: Color(0xFF00BCD4),
    isIncome: false,
  ),
];

const spendingCategories = [
  HomeSpendingCategory(
    name: 'Ovqat',
    percent: 0.30,
    color: Color(0xFFFF6B6B),
    amount: 63,
  ),
  HomeSpendingCategory(
    name: 'Transport',
    percent: 0.22,
    color: Color(0xFF1B93FE),
    amount: 155,
  ),
  HomeSpendingCategory(
    name: 'Kiyim',
    percent: 0.20,
    color: Color(0xFFFF9500),
    amount: 145,
  ),
  HomeSpendingCategory(
    name: "Ko'ngilochar",
    percent: 0.13,
    color: Color(0xFF7E5FA6),
    amount: 30,
  ),
  HomeSpendingCategory(
    name: 'Obuna',
    percent: 0.15,
    color: Color(0xFF00BCD4),
    amount: 55,
  ),
];
