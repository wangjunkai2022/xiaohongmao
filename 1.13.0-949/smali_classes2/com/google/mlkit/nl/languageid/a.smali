.class public Lcom/google/mlkit/nl/languageid/a;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/mlkit/nl/languageid/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/k;->c()Lcom/google/mlkit/common/sdkinternal/k;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;

    sget-object v1, Lcom/google/mlkit/nl/languageid/b;->c:Lcom/google/mlkit/nl/languageid/b;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->a(Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/c;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/c;
    .locals 2
    .param p0    # Lcom/google/mlkit/nl/languageid/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LanguageIdentificationOptions can not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/k;->c()Lcom/google/mlkit/common/sdkinternal/k;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->a(Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/c;

    move-result-object p0

    return-object p0
.end method
