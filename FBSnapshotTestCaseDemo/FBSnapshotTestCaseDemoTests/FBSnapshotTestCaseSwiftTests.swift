/*
 *  Copyright (c) 2017-2018, Uber Technologies, Inc.
 *  Copyright (c) 2013-2018, Facebook, Inc.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

import FBSnapshotTestCase

class FBSnapshotTestCaseSwiftTest: FBSnapshotTestCase {
  override func setUp() {
    super.setUp()
    recordMode = false
    
    let fileNameOptions: FBSnapshotTestCaseFileNameIncludeOption = [.optionOS, .optionDevice, .optionScreenSize, .optionScreenScale]
    self.fileNameOptions = fileNameOptions
  }

  func testExample() {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
    view.backgroundColor = UIColor.blue
    FBSnapshotVerifyView(view)
    FBSnapshotVerifyView(view, identifier: "identifier")
    FBSnapshotVerifyLayer(view.layer)
  }
}
