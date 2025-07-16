# Node.js 16.16.0 ベース
FROM node:16.16.0

# 作業ディレクトリ
WORKDIR /app

COPY . /app/

# グローバルにgulp-cliをインストール
RUN yarn global add gulp-cli
RUN yarn add --dev gulp -W

# 依存関係のインストール
RUN yarn install

# NODE_OPTIONS を設定して yarn 実行（= ビルド等）
ENV NODE_OPTIONS=--max_old_space_size=4096

RUN yarn

RUN yarn gulp release

# CMD ["yarn", "start"]