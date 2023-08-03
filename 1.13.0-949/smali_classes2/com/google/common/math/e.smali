.class public abstract Lcom/google/common/math/e;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/e$c;,
        Lcom/google/common/math/e$e;,
        Lcom/google/common/math/e$d;,
        Lcom/google/common/math/e$b;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/math/e;
    .locals 1

    sget-object v0, Lcom/google/common/math/e$c;->a:Lcom/google/common/math/e$c;

    return-object v0
.end method

.method public static b(D)Lcom/google/common/math/e;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/c;->d(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    new-instance v0, Lcom/google/common/math/e$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/math/e$d;-><init>(DD)V

    return-object v0
.end method

.method public static f(DD)Lcom/google/common/math/e$b;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/c;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/common/math/c;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    new-instance v0, Lcom/google/common/math/e$b;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/e$b;-><init>(DDLcom/google/common/math/e$a;)V

    return-object v0
.end method

.method public static i(D)Lcom/google/common/math/e;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/c;->d(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    new-instance v0, Lcom/google/common/math/e$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/e$e;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Lcom/google/common/math/e;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract g()D
.end method

.method public abstract h(D)D
.end method
