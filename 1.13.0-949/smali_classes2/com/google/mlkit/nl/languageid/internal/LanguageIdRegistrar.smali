.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

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
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/mlkit/nl/languageid/internal/i;

    invoke-static {v0}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 2
    invoke-static {v2}, Lcom/google/firebase/components/t;->j(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    const-class v2, Lcom/google/mlkit/nl/languageid/internal/a;

    .line 3
    invoke-static {v2}, Lcom/google/firebase/components/t;->l(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    sget-object v2, Lcom/google/mlkit/nl/languageid/internal/c;->a:Lcom/google/mlkit/nl/languageid/internal/c;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v1

    const-class v2, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;

    .line 6
    invoke-static {v2}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v2

    .line 7
    invoke-static {v0}, Lcom/google/firebase/components/t;->j(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    const-class v2, Lcom/google/mlkit/common/sdkinternal/f;

    .line 8
    invoke-static {v2}, Lcom/google/firebase/components/t;->j(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    sget-object v2, Lcom/google/mlkit/nl/languageid/internal/d;->a:Lcom/google/mlkit/nl/languageid/internal/d;

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v0

    .line 11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object v0

    return-object v0
.end method
