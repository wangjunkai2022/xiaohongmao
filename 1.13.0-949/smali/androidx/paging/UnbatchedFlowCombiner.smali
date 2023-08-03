.class public final Landroidx/paging/UnbatchedFlowCombiner;
.super Ljava/lang/Object;
.source "FlowExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExt.kt\nandroidx/paging/UnbatchedFlowCombiner\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,221:1\n108#2,8:222\n117#2:234\n12701#3,2:230\n18098#3,2:232\n*S KotlinDebug\n*F\n+ 1 FlowExt.kt\nandroidx/paging/UnbatchedFlowCombiner\n*L\n193#1:222,8\n193#1:234\n194#1:230,2\n197#1:232,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003Bg\u0012[\u0010\u0012\u001aW\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J%\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tRl\u0010\u0012\u001aW\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n8\u0002X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R \u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00140\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/paging/UnbatchedFlowCombiner;",
        "T1",
        "T2",
        "",
        "",
        "index",
        "value",
        "",
        "onNext",
        "(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "t1",
        "t2",
        "Landroidx/paging/CombineSource;",
        "updateFrom",
        "Lkotlin/coroutines/Continuation;",
        "send",
        "Lkotlin/jvm/functions/Function4;",
        "Lkotlinx/coroutines/z;",
        "initialDispatched",
        "Lkotlinx/coroutines/z;",
        "Lkotlinx/coroutines/sync/c;",
        "lock",
        "Lkotlinx/coroutines/sync/c;",
        "",
        "valueReceived",
        "[Lkotlinx/coroutines/z;",
        "values",
        "[Ljava/lang/Object;",
        "<init>",
        "(Lkotlin/jvm/functions/Function4;)V",
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
.field private final initialDispatched:Lkotlinx/coroutines/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/z<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final lock:Lkotlinx/coroutines/sync/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final send:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TT1;TT2;",
            "Landroidx/paging/CombineSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final valueReceived:[Lkotlinx/coroutines/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/z<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function4;)V
    .locals 6
    .param p1    # Lkotlin/jvm/functions/Function4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-TT1;-TT2;-",
            "Landroidx/paging/CombineSource;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "send"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->send:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/b0;->c(Lkotlinx/coroutines/j2;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    iput-object v1, p0, Landroidx/paging/UnbatchedFlowCombiner;->initialDispatched:Lkotlinx/coroutines/z;

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0, p1}, Lkotlinx/coroutines/sync/e;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/c;

    move-result-object v2

    iput-object v2, p0, Landroidx/paging/UnbatchedFlowCombiner;->lock:Lkotlinx/coroutines/sync/c;

    const/4 v2, 0x2

    new-array v3, v2, [Lkotlinx/coroutines/z;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 5
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/b0;->c(Lkotlinx/coroutines/j2;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroidx/paging/UnbatchedFlowCombiner;->valueReceived:[Lkotlinx/coroutines/z;

    new-array p1, v2, [Ljava/lang/Object;

    :goto_1
    if-ge v1, v2, :cond_1

    .line 6
    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onNext(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    iget v4, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    invoke-direct {v3, v1, v2}, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;-><init>(Landroidx/paging/UnbatchedFlowCombiner;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/sync/c;

    iget-object v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/UnbatchedFlowCombiner;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iget-object v5, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/c;

    iget-object v7, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iget-object v10, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/UnbatchedFlowCombiner;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move v2, v0

    move-object v0, v10

    goto :goto_3

    :cond_3
    iget v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iget-object v5, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iget-object v10, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/UnbatchedFlowCombiner;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Landroidx/paging/UnbatchedFlowCombiner;->valueReceived:[Lkotlinx/coroutines/z;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lkotlinx/coroutines/j2;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5
    iget-object v2, v1, Landroidx/paging/UnbatchedFlowCombiner;->initialDispatched:Lkotlinx/coroutines/z;

    iput-object v1, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iput v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iput v9, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    invoke-interface {v2, v3}, Lkotlinx/coroutines/y0;->D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_5
    move-object/from16 v5, p2

    .line 6
    iget-object v2, v1, Landroidx/paging/UnbatchedFlowCombiner;->valueReceived:[Lkotlinx/coroutines/z;

    aget-object v2, v2, v0

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v10}, Lkotlinx/coroutines/z;->L(Ljava/lang/Object;)Z

    :cond_6
    move-object v10, v1

    .line 7
    :goto_2
    iget-object v2, v10, Landroidx/paging/UnbatchedFlowCombiner;->lock:Lkotlinx/coroutines/sync/c;

    .line 8
    iput-object v10, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$2:Ljava/lang/Object;

    iput v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->I$0:I

    iput v7, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    invoke-interface {v2, v8, v3}, Lkotlinx/coroutines/sync/c;->c(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_7

    return-object v4

    :cond_7
    move-object v7, v5

    move-object v5, v2

    goto :goto_1

    .line 9
    :goto_3
    :try_start_1
    iget-object v10, v0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    .line 10
    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_a

    aget-object v14, v10, v13

    .line 11
    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_9

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    .line 12
    :goto_6
    iget-object v11, v0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    aput-object v7, v11, v2

    .line 13
    array-length v7, v11

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v7, :cond_d

    aget-object v14, v11, v13

    .line 14
    invoke-static {}, Landroidx/paging/FlowExtKt;->access$getNULL$p()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_b

    const/4 v14, 0x1

    goto :goto_8

    :cond_b
    const/4 v14, 0x0

    :goto_8
    if-eqz v14, :cond_c

    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x1

    :goto_9
    if-eqz v7, :cond_11

    if-eqz v10, :cond_e

    .line 15
    sget-object v2, Landroidx/paging/CombineSource;->INITIAL:Landroidx/paging/CombineSource;

    goto :goto_a

    :cond_e
    if-nez v2, :cond_f

    .line 16
    sget-object v2, Landroidx/paging/CombineSource;->RECEIVER:Landroidx/paging/CombineSource;

    goto :goto_a

    .line 17
    :cond_f
    sget-object v2, Landroidx/paging/CombineSource;->OTHER:Landroidx/paging/CombineSource;

    .line 18
    :goto_a
    iget-object v7, v0, Landroidx/paging/UnbatchedFlowCombiner;->send:Lkotlin/jvm/functions/Function4;

    iget-object v10, v0, Landroidx/paging/UnbatchedFlowCombiner;->values:[Ljava/lang/Object;

    aget-object v11, v10, v12

    aget-object v9, v10, v9

    iput-object v0, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->label:I

    invoke-interface {v7, v11, v9, v2, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v4, :cond_10

    return-object v4

    :cond_10
    move-object v4, v5

    .line 19
    :goto_b
    :try_start_2
    iget-object v0, v0, Landroidx/paging/UnbatchedFlowCombiner;->initialDispatched:Lkotlinx/coroutines/z;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/z;->L(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    move-object v4, v5

    .line 20
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/c;->d(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v4, v5

    :goto_d
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/c;->d(Ljava/lang/Object;)V

    throw v0
.end method
