.class final enum Lcom/google/common/util/concurrent/t;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/t;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/t;

.field private static final synthetic b:[Lcom/google/common/util/concurrent/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/t;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/t;->a:Lcom/google/common/util/concurrent/t;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/util/concurrent/t;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/util/concurrent/t;->b:[Lcom/google/common/util/concurrent/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/t;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/t;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/t;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/t;->b:[Lcom/google/common/util/concurrent/t;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/t;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
