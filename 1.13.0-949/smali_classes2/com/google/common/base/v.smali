.class public final Lcom/google/common/base/v;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/v$b;
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Both parameters are null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method

.method public static b(Ljava/lang/Class;)Lcom/google/common/base/v$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/base/v$b;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/v$b;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/v$b;-><init>(Ljava/lang/String;Lcom/google/common/base/v$a;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Lcom/google/common/base/v$b;
    .locals 2

    new-instance v0, Lcom/google/common/base/v$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/v$b;-><init>(Ljava/lang/String;Lcom/google/common/base/v$a;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/google/common/base/v$b;
    .locals 2

    new-instance v0, Lcom/google/common/base/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/v$b;-><init>(Ljava/lang/String;Lcom/google/common/base/v$a;)V

    return-object v0
.end method
