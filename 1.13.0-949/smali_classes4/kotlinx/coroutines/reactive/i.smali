.class final enum Lkotlinx/coroutines/reactive/i;
.super Ljava/lang/Enum;
.source "Await.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/reactive/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/reactive/i;",
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
        "SINGLE_OR_DEFAULT",
        "kotlinx-coroutines-reactive"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum b:Lkotlinx/coroutines/reactive/i;

.field public static final enum c:Lkotlinx/coroutines/reactive/i;

.field public static final enum d:Lkotlinx/coroutines/reactive/i;

.field public static final enum e:Lkotlinx/coroutines/reactive/i;

.field public static final enum f:Lkotlinx/coroutines/reactive/i;

.field private static final synthetic g:[Lkotlinx/coroutines/reactive/i;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/reactive/i;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    const-string v3, "awaitFirst"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/reactive/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/reactive/i;->b:Lkotlinx/coroutines/reactive/i;

    .line 2
    new-instance v0, Lkotlinx/coroutines/reactive/i;

    const-string v1, "FIRST_OR_DEFAULT"

    const/4 v2, 0x1

    const-string v3, "awaitFirstOrDefault"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/reactive/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/reactive/i;->c:Lkotlinx/coroutines/reactive/i;

    .line 3
    new-instance v0, Lkotlinx/coroutines/reactive/i;

    const-string v1, "LAST"

    const/4 v2, 0x2

    const-string v3, "awaitLast"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/reactive/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/reactive/i;->d:Lkotlinx/coroutines/reactive/i;

    .line 4
    new-instance v0, Lkotlinx/coroutines/reactive/i;

    const-string v1, "SINGLE"

    const/4 v2, 0x3

    const-string v3, "awaitSingle"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/reactive/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/reactive/i;->e:Lkotlinx/coroutines/reactive/i;

    .line 5
    new-instance v0, Lkotlinx/coroutines/reactive/i;

    const-string v1, "SINGLE_OR_DEFAULT"

    const/4 v2, 0x4

    const-string v3, "awaitSingleOrDefault"

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/reactive/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/reactive/i;->f:Lkotlinx/coroutines/reactive/i;

    invoke-static {}, Lkotlinx/coroutines/reactive/i;->a()[Lkotlinx/coroutines/reactive/i;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/reactive/i;->g:[Lkotlinx/coroutines/reactive/i;

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

    iput-object p3, p0, Lkotlinx/coroutines/reactive/i;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lkotlinx/coroutines/reactive/i;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/coroutines/reactive/i;

    sget-object v1, Lkotlinx/coroutines/reactive/i;->b:Lkotlinx/coroutines/reactive/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/reactive/i;->c:Lkotlinx/coroutines/reactive/i;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/reactive/i;->d:Lkotlinx/coroutines/reactive/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/reactive/i;->e:Lkotlinx/coroutines/reactive/i;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/reactive/i;->f:Lkotlinx/coroutines/reactive/i;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/reactive/i;
    .locals 1

    const-class v0, Lkotlinx/coroutines/reactive/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/reactive/i;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/reactive/i;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/reactive/i;->g:[Lkotlinx/coroutines/reactive/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/reactive/i;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/reactive/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/reactive/i;->a:Ljava/lang/String;

    return-object v0
.end method
