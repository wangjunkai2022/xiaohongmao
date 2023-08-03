.class public Lcom/google/mlkit/nl/languageid/bundled/internal/a;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id@@17.0.4"

# interfaces
.implements Lcom/google/mlkit/nl/languageid/internal/a;


# annotations
.annotation build Lu2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/internal/b;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/nl/languageid/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    invoke-direct {v0, p1, p2}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;-><init>(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/b;)V

    return-object v0
.end method

.method public final getPriority()I
    .locals 1
    .annotation build Lcom/google/mlkit/common/sdkinternal/b;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method
