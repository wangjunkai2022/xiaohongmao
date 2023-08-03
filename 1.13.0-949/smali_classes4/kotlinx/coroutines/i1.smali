.class public final Lkotlinx/coroutines/i1;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0007R \u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0006\u0012\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\r\u0010\u0008R \u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0006\u0012\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u000c\u0010\u0008R\u001a\u0010\u0017\u001a\u00020\u00138FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\n\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/i1;",
        "",
        "",
        "i",
        "Lkotlinx/coroutines/n0;",
        "b",
        "Lkotlinx/coroutines/n0;",
        "a",
        "()Lkotlinx/coroutines/n0;",
        "getDefault$annotations",
        "()V",
        "Default",
        "c",
        "g",
        "getUnconfined$annotations",
        "Unconfined",
        "d",
        "getIO$annotations",
        "IO",
        "Lkotlinx/coroutines/u2;",
        "e",
        "()Lkotlinx/coroutines/u2;",
        "getMain$annotations",
        "Main",
        "<init>",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/i1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/i1;

    invoke-direct {v0}, Lkotlinx/coroutines/i1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/i1;->a:Lkotlinx/coroutines/i1;

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/c;

    sput-object v0, Lkotlinx/coroutines/i1;->b:Lkotlinx/coroutines/n0;

    .line 2
    sget-object v0, Lkotlinx/coroutines/v3;->a:Lkotlinx/coroutines/v3;

    sput-object v0, Lkotlinx/coroutines/i1;->c:Lkotlinx/coroutines/n0;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Lkotlinx/coroutines/i1;->d:Lkotlinx/coroutines/n0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/n0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/i1;->b:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final c()Lkotlinx/coroutines/n0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/i1;->d:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final e()Lkotlinx/coroutines/u2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/internal/c0;->c:Lkotlinx/coroutines/u2;

    return-object v0
.end method

.method public static synthetic f()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final g()Lkotlinx/coroutines/n0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/i1;->c:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public static synthetic h()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 1
    .annotation build Lkotlinx/coroutines/c1;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/w0;->f:Lkotlinx/coroutines/w0;

    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->shutdown()V

    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/c;->v0()V

    return-void
.end method
