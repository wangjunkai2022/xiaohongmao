.class public Lcom/qennnsad/aknkaksd/data/converter/c;
.super Lretrofit2/Converter$Factory;
.source "StringConverterFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method public static a()Lcom/qennnsad/aknkaksd/data/converter/c;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/converter/c;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/converter/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/data/converter/d;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/data/converter/d;-><init>()V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/data/converter/e;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/data/converter/e;-><init>()V

    return-object p1
.end method
