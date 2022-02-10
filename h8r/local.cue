package h8r

import(
  "alpha.dagger.io/dagger"
  "alpha.dagger.io/git"
)

createRepo: git.#Create & {
  repoName: dagger.#Input
}

//cluster: tencent.#Tke & {
//  secretId: dagger.#Input
//  secretKey: dagger.#Secret
//}