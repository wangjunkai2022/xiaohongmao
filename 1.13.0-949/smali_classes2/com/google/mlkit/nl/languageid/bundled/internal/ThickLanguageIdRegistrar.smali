.class public Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id@@17.0.4"

# interfaces
.implements Lcom/google/firebase/components/k;


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/mlkit/nl/languageid/internal/a;

    invoke-static {v0}, Lcom/google/firebase/components/f;->h(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    sget-object v1, Lcom/google/mlkit/nl/languageid/bundled/internal/b;->a:Lcom/google/mlkit/nl/languageid/bundled/internal/b;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbj;->zbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbj;

    move-result-object v0

    return-object v0
.end method
