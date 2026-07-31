import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../data/app_data.dart';
import '../components/app_cards.dart';
import '../components/app_typography.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<int> _answers;
  bool _submitted = false;

  @override
  void initState() {
    super.initState();
    _answers = List.filled(quizList.length, -1);
  }

  int get _answeredCount => _answers.where((a) => a != -1).length;

  int get _correctCount {
    int correct = 0;
    for (int i = 0; i < quizList.length; i++) {
      if (_answers[i] == quizList[i].correctIndex) correct++;
    }
    return correct;
  }

  int get _score => (_correctCount / quizList.length * 100).round();

  void _submit() {
    if (_answeredCount < quizList.length) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Belum Lengkap'),
          content: Text(
            'Anda baru menjawab $_answeredCount dari ${quizList.length} soal. Yakin ingin submit?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Kembali'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
                setState(() => _submitted = true);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      );
    } else {
      setState(() => _submitted = true);
    }
  }

  void _reset() {
    setState(() {
      _answers = List.filled(quizList.length, -1);
      _submitted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_submitted) return _buildResultView();
    return _buildQuizView();
  }

  Widget _buildQuizView() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              AppCard(
                margin: const EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Quiz Evaluasi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Jawablah 25 pertanyaan berikut untuk menguji pemahaman Anda. Skor akan dihitung otomatis setelah menekan tombol Submit.',
                      style: TextStyle(
                        fontSize: 11.5,
                        color: AppColors.textDim,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: LinearProgressIndicator(
                              value: _answeredCount / quizList.length,
                              minHeight: 6,
                              backgroundColor: AppColors.border,
                              valueColor: const AlwaysStoppedAnimation(AppColors.primary),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '$_answeredCount/${quizList.length}',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ...List.generate(quizList.length, (i) => _buildQuestionCard(i)),
              const SizedBox(height: 80),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
          decoration: const BoxDecoration(
            color: AppColors.card,
            border: Border(top: BorderSide(color: AppColors.border)),
          ),
          child: SafeArea(
            top: false,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _submit,
                icon: const Icon(Icons.check_circle_outline, size: 18),
                label: Text('Submit Jawaban ($_answeredCount/${quizList.length})'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionCard(int index) {
    final q = quizList[index];
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PERTANYAAN ${index + 1} / ${quizList.length}',
                style: const TextStyle(
                  fontSize: 10.5,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDim,
                ),
              ),
              ChipLabel(text: q.category),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            q.question,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.text,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 10),
          ...List.generate(q.options.length, (optIdx) {
            final selected = _answers[index] == optIdx;
            return GestureDetector(
              onTap: () => setState(() => _answers[index] = optIdx),
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                decoration: BoxDecoration(
                  color: selected ? AppColors.accentLight : AppColors.card,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: selected ? AppColors.primary : AppColors.border,
                    width: selected ? 1.5 : 1,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      selected ? Icons.radio_button_checked : Icons.radio_button_off,
                      size: 18,
                      color: selected ? AppColors.primary : AppColors.textDim,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        q.options[optIdx],
                        style: TextStyle(
                          fontSize: 12,
                          color: selected ? AppColors.primary : AppColors.text,
                          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildResultView() {
    final score = _score;
    final correct = _correctCount;
    final wrong = quizList.length - correct;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const Text(
                'HASIL QUIZ',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.12),
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: Center(
                  child: Text(
                    '$score',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                score >= 80
                    ? 'Luar biasa! Pemahaman Anda sangat baik.'
                    : score >= 60
                        ? 'Bagus! Terus tingkatkan pemahaman Anda.'
                        : 'Jangan menyerah, pelajari kembali materinya.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _scoreChip(Icons.check_circle, '$correct Benar', AppColors.accent),
                  const SizedBox(width: 10),
                  _scoreChip(Icons.cancel, '$wrong Salah', Colors.redAccent),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: _reset,
            icon: const Icon(Icons.refresh, size: 18),
            label: const Text('Ulangi Quiz'),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Review Jawaban',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.text,
          ),
        ),
        const SizedBox(height: 10),
        ...List.generate(quizList.length, (i) => _buildReviewCard(i)),
      ],
    );
  }

  Widget _scoreChip(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 14),
          const SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewCard(int index) {
    final q = quizList[index];
    final userAnswer = _answers[index];
    final isCorrect = userAnswer == q.correctIndex;

    return AppCard(
      margin: const EdgeInsets.only(bottom: 12),
      borderColor: isCorrect
          ? AppColors.success.withValues(alpha: 0.4)
          : AppColors.error.withValues(alpha: 0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                color: isCorrect ? AppColors.success : AppColors.error,
                size: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Soal ${index + 1} — ${q.category}',
                  style: const TextStyle(
                    fontSize: 10.5,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDim,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            q.question,
            style: const TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: AppColors.text,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 10),
          if (userAnswer != -1)
            _reviewRow(
              'Jawaban Anda',
              q.options[userAnswer],
              isCorrect ? AppColors.success : AppColors.error,
              isCorrect ? AppColors.successBg : AppColors.errorBg,
            )
          else
            _reviewRow(
              'Jawaban Anda',
              'Tidak dijawab',
              AppColors.warning,
              AppColors.warningBg,
            ),
          const SizedBox(height: 6),
          _reviewRow(
            'Jawaban Benar',
            q.options[q.correctIndex],
            AppColors.success,
            AppColors.successBg,
          ),
        ],
      ),
    );
  }

  Widget _reviewRow(String label, String text, Color color, Color bg) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: color,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            text,
            style: TextStyle(
              fontSize: 11.5,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
