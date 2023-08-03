.class final Lcom/google/common/cache/l;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/l$c;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Lcom/google/common/cache/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/common/cache/m;

    invoke-direct {v0}, Lcom/google/common/cache/m;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/cache/l$a;

    invoke-direct {v0}, Lcom/google/common/cache/l$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    new-instance v0, Lcom/google/common/cache/l$b;

    invoke-direct {v0}, Lcom/google/common/cache/l$b;-><init>()V

    .line 4
    :goto_0
    sput-object v0, Lcom/google/common/cache/l;->a:Lcom/google/common/base/i0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/cache/k;
    .locals 1

    sget-object v0, Lcom/google/common/cache/l;->a:Lcom/google/common/base/i0;

    invoke-interface {v0}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/k;

    return-object v0
.end method
