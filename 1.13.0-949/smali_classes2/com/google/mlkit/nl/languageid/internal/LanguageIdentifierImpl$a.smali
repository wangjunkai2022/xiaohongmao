.class public final Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

.field private final b:Lcom/google/mlkit/nl/languageid/internal/i;

.field private final c:Lcom/google/mlkit/common/sdkinternal/f;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/internal/i;Lcom/google/mlkit/common/sdkinternal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/i;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->c:Lcom/google/mlkit/common/sdkinternal/f;

    invoke-virtual {p1}, Lcom/google/mlkit/nl/languageid/internal/i;->m()Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const-string p1, "play-services-mlkit-language-id"

    goto :goto_0

    :cond_0
    const-string p1, "language-id"

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/c;
    .locals 3
    .param p1    # Lcom/google/mlkit/nl/languageid/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/nl/languageid/internal/i;->l(Lcom/google/mlkit/nl/languageid/b;)V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/i;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;->c:Lcom/google/mlkit/common/sdkinternal/f;

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a(Lcom/google/mlkit/nl/languageid/b;Lcom/google/mlkit/nl/languageid/internal/i;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/mlkit/common/sdkinternal/f;)Lcom/google/mlkit/nl/languageid/c;

    move-result-object p1

    return-object p1
.end method
