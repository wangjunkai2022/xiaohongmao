.class public final Lcom/google/common/collect/v2;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/v2$c;,
        Lcom/google/common/collect/v2$d;,
        Lcom/google/common/collect/v2$b;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/collect/u2;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/u2<",
            "TE;>;)",
            "Lcom/google/common/base/q<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/v2$c;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/u2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v2$c;-><init>(Lcom/google/common/collect/u2;)V

    return-object v0
.end method

.method public static b()Lcom/google/common/collect/v2$b;
    .locals 2

    new-instance v0, Lcom/google/common/collect/v2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/v2$b;-><init>(Lcom/google/common/collect/v2$a;)V

    return-object v0
.end method

.method public static c()Lcom/google/common/collect/u2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/u2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/v2;->b()Lcom/google/common/collect/v2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/v2$b;->c()Lcom/google/common/collect/v2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/v2$b;->a()Lcom/google/common/collect/u2;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/google/common/collect/u2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/u2<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/c;
        value = "java.lang.ref.WeakReference"
    .end annotation

    invoke-static {}, Lcom/google/common/collect/v2;->b()Lcom/google/common/collect/v2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/v2$b;->d()Lcom/google/common/collect/v2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/v2$b;->a()Lcom/google/common/collect/u2;

    move-result-object v0

    return-object v0
.end method
