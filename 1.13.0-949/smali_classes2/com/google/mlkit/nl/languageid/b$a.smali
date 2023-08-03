.class public Lcom/google/mlkit/nl/languageid/b$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/mlkit/nl/languageid/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/nl/languageid/b;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/b$a;->a:Ljava/lang/Float;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/b$a;->b:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mlkit/nl/languageid/b;-><init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lcom/google/mlkit/nl/languageid/e;)V

    return-object v0
.end method

.method public b(F)Lcom/google/mlkit/nl/languageid/b$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const-string v1, "Threshold value %f should be between 0 and 1"

    .line 2
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/common/internal/u;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/b$a;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public c(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/nl/languageid/b$a;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Custom executor should not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/b$a;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method
