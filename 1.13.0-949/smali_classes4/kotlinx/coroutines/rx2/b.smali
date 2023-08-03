.class final enum Lkotlinx/coroutines/rx2/b;
.super Ljava/lang/Enum;
.source "RxAwait.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/rx2/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/b;",
        "",
        "",
        "toString",
        "a",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "s",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "FIRST",
        "FIRST_OR_DEFAULT",
        "LAST",
        "SINGLE",
        "kotlinx-coroutines-rx2"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum b:Lkotlinx/coroutines/rx2/b;

.field public static final enum c:Lkotlinx/coroutines/rx2/b;

.field public static final enum d:Lkotlinx/coroutines/rx2/b;

.field public static final enum e:Lkotlinx/coroutines/rx2/b;

.field private static final synthetic f:[Lkotlinx/coroutines/rx2/b;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/rx2/b;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    const-string v3, "awaitFirst"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/rx2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/rx2/b;->b:Lkotlinx/coroutines/rx2/b;

    .line 2
    new-instance v0, Lkotlinx/coroutines/rx2/b;

    const-string v1, "FIRST_OR_DEFAULT"

    const/4 v2, 0x1

    const-string v3, "awaitFirstOrDefault"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/rx2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/rx2/b;->c:Lkotlinx/coroutines/rx2/b;

    .line 3
    new-instance v0, Lkotlinx/coroutines/rx2/b;

    const-string v1, "LAST"

    const/4 v2, 0x2

    const-string v3, "awaitLast"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/rx2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/rx2/b;->d:Lkotlinx/coroutines/rx2/b;

    .line 4
    new-instance v0, Lkotlinx/coroutines/rx2/b;

    const-string v1, "SINGLE"

    const/4 v2, 0x3

    const-string v3, "awaitSingle"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/rx2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/rx2/b;->e:Lkotlinx/coroutines/rx2/b;

    invoke-static {}, Lkotlinx/coroutines/rx2/b;->a()[Lkotlinx/coroutines/rx2/b;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx2/b;->f:[Lkotlinx/coroutines/rx2/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlinx/coroutines/rx2/b;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lkotlinx/coroutines/rx2/b;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/rx2/b;

    sget-object v1, Lkotlinx/coroutines/rx2/b;->b:Lkotlinx/coroutines/rx2/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/rx2/b;->c:Lkotlinx/coroutines/rx2/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/rx2/b;->d:Lkotlinx/coroutines/rx2/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/rx2/b;->e:Lkotlinx/coroutines/rx2/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/rx2/b;
    .locals 1

    const-class v0, Lkotlinx/coroutines/rx2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/rx2/b;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/rx2/b;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/rx2/b;->f:[Lkotlinx/coroutines/rx2/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/rx2/b;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/rx2/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/rx2/b;->a:Ljava/lang/String;

    return-object v0
.end method
