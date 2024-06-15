import 'package:complete_project/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specializations_response_model.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({
    super.key,
    required this.specializationsDataList,
  });
  final List<SpecializationsData?> specializationsDataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(
            itemIndex: index,
            specializationsData: specializationsDataList[index],
          );
        },
      ),
    );
  }
}
