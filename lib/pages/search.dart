import 'package:flutter/material.dart';
import 'package:instaclonetut/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(8),
            
          ),
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: ClipRReact(
      //     borderRadius: BorderRadius.circular(8),
      //     child: Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.grey[300],
      //       child: Row(
      //         children: [
      //           Icon(
      //             Icons.search,
      //             color: Colors.grey[500],
      //           ),
      //           Container(
      //             child: Text(
      //               'Search',
      //               style: TextStyle(color: Colors.grey[500]),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: ExploreGrid(),
    );
  }

  ClipRReact({required BorderRadius borderRadius, required Container child}) {}
}
