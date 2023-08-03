.class final Lcom/google/common/hash/u;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/u$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Lcom/google/common/hash/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/common/hash/v;

    invoke-direct {v0}, Lcom/google/common/hash/v;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/hash/u$a;

    invoke-direct {v0}, Lcom/google/common/hash/u$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    new-instance v0, Lcom/google/common/hash/u$b;

    invoke-direct {v0}, Lcom/google/common/hash/u$b;-><init>()V

    .line 4
    :goto_0
    sput-object v0, Lcom/google/common/hash/u;->a:Lcom/google/common/base/i0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/hash/t;
    .locals 1

    sget-object v0, Lcom/google/common/hash/u;->a:Lcom/google/common/base/i0;

    invoke-interface {v0}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/t;

    return-object v0
.end method
