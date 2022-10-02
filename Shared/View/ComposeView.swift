//
//  ComposeView.swift
//  swiftMemo
//
//  Created by daeun on 2022/10/02.
//

import SwiftUI

struct ComposeView: View {
    @EnvironmentObject var store: MemoStore
    
    @Environment(\.dismiss) var dissmiss
    
    @State private var content: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $content)
                    .padding()
            }
            .navigationTitle("새 메모")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button{
                        dissmiss()
                    } label: {
                        Text("취소")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        store.insert(memo: content)
                    } label: {
                        Text("저장")
                    }
                }

            }
        }
    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
            .environmentObject(MemoStore())
    }
}
