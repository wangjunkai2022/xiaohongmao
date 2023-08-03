.class final Landroidx/paging/PageFetcher$GenerationInfo;
.super Ljava/lang/Object;
.source "PageFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000*\u0008\u0008\u0002\u0010\u0002*\u00020\u0001*\u0008\u0008\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B9\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R#\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R%\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000f\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/paging/PageFetcher$GenerationInfo;",
        "",
        "Key",
        "Value",
        "Landroidx/paging/PageFetcherSnapshot;",
        "snapshot",
        "Landroidx/paging/PageFetcherSnapshot;",
        "getSnapshot",
        "()Landroidx/paging/PageFetcherSnapshot;",
        "Landroidx/paging/PagingState;",
        "state",
        "Landroidx/paging/PagingState;",
        "getState",
        "()Landroidx/paging/PagingState;",
        "Lkotlinx/coroutines/j2;",
        "job",
        "Lkotlinx/coroutines/j2;",
        "getJob",
        "()Lkotlinx/coroutines/j2;",
        "<init>",
        "(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/j2;)V",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final job:Lkotlinx/coroutines/j2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final snapshot:Landroidx/paging/PageFetcherSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final state:Landroidx/paging/PagingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/j2;)V
    .locals 1
    .param p1    # Landroidx/paging/PageFetcherSnapshot;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagingState;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/j2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;",
            "Lkotlinx/coroutines/j2;",
            ")V"
        }
    .end annotation

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 3
    iput-object p2, p0, Landroidx/paging/PageFetcher$GenerationInfo;->state:Landroidx/paging/PagingState;

    .line 4
    iput-object p3, p0, Landroidx/paging/PageFetcher$GenerationInfo;->job:Lkotlinx/coroutines/j2;

    return-void
.end method


# virtual methods
.method public final getJob()Lkotlinx/coroutines/j2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PageFetcher$GenerationInfo;->job:Lkotlinx/coroutines/j2;

    return-object v0
.end method

.method public final getSnapshot()Landroidx/paging/PageFetcherSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PageFetcherSnapshot<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    return-object v0
.end method

.method public final getState()Landroidx/paging/PagingState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PageFetcher$GenerationInfo;->state:Landroidx/paging/PagingState;

    return-object v0
.end method
