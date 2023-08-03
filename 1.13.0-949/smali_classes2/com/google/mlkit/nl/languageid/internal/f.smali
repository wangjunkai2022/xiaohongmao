.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/f;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

.field public final synthetic b:Lcom/google/mlkit/nl/languageid/internal/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/i;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/f;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/f;->b:Lcom/google/mlkit/nl/languageid/internal/i;

    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/internal/f;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/mlkit/nl/languageid/internal/f;->d:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/f;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/f;->b:Lcom/google/mlkit/nl/languageid/internal/i;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/f;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/mlkit/nl/languageid/internal/f;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->h(Lcom/google/mlkit/nl/languageid/internal/i;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
