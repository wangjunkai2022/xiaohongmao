.class public final Landroidx/paging/PagingData;
.super Ljava/lang/Object;
.source "PagingData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagingData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u0010*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\u0010B%\u0008\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR&\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u00038\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\n\u001a\u00020\t8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/paging/PagingData;",
        "",
        "T",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/PageEvent;",
        "flow",
        "Lkotlinx/coroutines/flow/i;",
        "getFlow$paging_common",
        "()Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/UiReceiver;",
        "receiver",
        "Landroidx/paging/UiReceiver;",
        "getReceiver$paging_common",
        "()Landroidx/paging/UiReceiver;",
        "<init>",
        "(Lkotlinx/coroutines/flow/i;Landroidx/paging/UiReceiver;)V",
        "Companion",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/PagingData$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final EMPTY:Landroidx/paging/PagingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final NOOP_RECEIVER:Landroidx/paging/UiReceiver;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final flow:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final receiver:Landroidx/paging/UiReceiver;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/paging/PagingData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PagingData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    .line 1
    new-instance v0, Landroidx/paging/PagingData$Companion$NOOP_RECEIVER$1;

    invoke-direct {v0}, Landroidx/paging/PagingData$Companion$NOOP_RECEIVER$1;-><init>()V

    sput-object v0, Landroidx/paging/PagingData;->NOOP_RECEIVER:Landroidx/paging/UiReceiver;

    .line 2
    new-instance v1, Landroidx/paging/PagingData;

    .line 3
    sget-object v2, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert$Companion;->getEMPTY_REFRESH_LOCAL()Landroidx/paging/PageEvent$Insert;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/k;->L0(Ljava/lang/Object;)Lkotlinx/coroutines/flow/i;

    move-result-object v2

    .line 4
    invoke-direct {v1, v2, v0}, Landroidx/paging/PagingData;-><init>(Lkotlinx/coroutines/flow/i;Landroidx/paging/UiReceiver;)V

    sput-object v1, Landroidx/paging/PagingData;->EMPTY:Landroidx/paging/PagingData;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/i;Landroidx/paging/UiReceiver;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/UiReceiver;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/i<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;",
            "Landroidx/paging/UiReceiver;",
            ")V"
        }
    .end annotation

    const-string v0, "flow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/i;

    .line 3
    iput-object p2, p0, Landroidx/paging/PagingData;->receiver:Landroidx/paging/UiReceiver;

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Landroidx/paging/PagingData;
    .locals 1

    sget-object v0, Landroidx/paging/PagingData;->EMPTY:Landroidx/paging/PagingData;

    return-object v0
.end method

.method public static final synthetic access$getNOOP_RECEIVER$cp()Landroidx/paging/UiReceiver;
    .locals 1

    sget-object v0, Landroidx/paging/PagingData;->NOOP_RECEIVER:Landroidx/paging/UiReceiver;

    return-object v0
.end method

.method public static final empty()Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0}, Landroidx/paging/PagingData$Companion;->empty()Landroidx/paging/PagingData;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Ljava/util/List;)Landroidx/paging/PagingData;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Landroidx/paging/PagingData;->Companion:Landroidx/paging/PagingData$Companion;

    invoke-virtual {v0, p0}, Landroidx/paging/PagingData$Companion;->from(Ljava/util/List;)Landroidx/paging/PagingData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFlow$paging_common()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method

.method public final getReceiver$paging_common()Landroidx/paging/UiReceiver;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingData;->receiver:Landroidx/paging/UiReceiver;

    return-object v0
.end method
