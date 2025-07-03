FROM openjdk:18-slim

# 作業ディレクトリ
WORKDIR /app

# ホスト側のソースコードをコンテナにコピー
COPY . /app

# 実行権限を付与（mvnwがある場合）
RUN chmod +x ./mvnw

# キャッシュのために依存関係を先に解決することも可能（任意）
# RUN ./mvnw dependency:go-offline

# ビルドコマンド（docker-composeで実行）
CMD ["./mvnw", "clean", "package", "-DskipTests"]
