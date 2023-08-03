.class final Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GiftAnimationUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->D(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGiftAnimationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GiftAnimationUtil.kt\ncom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$testAnimation$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,264:1\n1#2:265\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.util.animations.GiftAnimationUtil$testAnimation$1"
    f = "GiftAnimationUtil.kt"
    i = {}
    l = {
        0x68,
        0x69,
        0x6a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

.field final synthetic k:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

.field final synthetic l:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

.field final synthetic m:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->j:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->k:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->l:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->m:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->j:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->k:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->l:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->m:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;-><init>(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->b:I

    iget v7, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->a:I

    iget-object v8, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->h:Ljava/lang/Object;

    check-cast v8, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v9, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->g:Ljava/lang/Object;

    check-cast v9, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v10, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->f:Ljava/lang/Object;

    check-cast v10, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v11, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->e:Ljava/lang/Object;

    check-cast v11, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget v2, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->d:I

    iget v7, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->c:I

    iget v8, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->b:I

    iget v9, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->a:I

    iget-object v10, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->h:Ljava/lang/Object;

    check-cast v10, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v11, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->g:Ljava/lang/Object;

    check-cast v11, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v12, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->f:Ljava/lang/Object;

    check-cast v12, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v13, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->e:Ljava/lang/Object;

    check-cast v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v10

    move-object v14, v11

    move-object v11, v13

    move-object v13, v12

    move-object v12, v0

    goto/16 :goto_3

    :cond_2
    iget v2, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->d:I

    iget v7, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->c:I

    iget v8, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->b:I

    iget v9, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->a:I

    iget-object v10, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->h:Ljava/lang/Object;

    check-cast v10, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v11, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->g:Ljava/lang/Object;

    check-cast v11, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v12, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->f:Ljava/lang/Object;

    check-cast v12, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v13, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->e:Ljava/lang/Object;

    check-cast v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v11

    move-object v14, v12

    move-object v12, v13

    move-object v13, v0

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 4
    iget-object v7, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->j:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    iget-object v8, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->k:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v9, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->l:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    iget-object v10, v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->m:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    move-object v12, v0

    move-object v14, v7

    move-object v15, v8

    move-object v8, v10

    const/4 v2, 0x0

    const/16 v7, 0xa

    :goto_0
    if-ge v2, v7, :cond_b

    if-eq v2, v5, :cond_8

    const/4 v10, 0x7

    if-eq v2, v10, :cond_5

    .line 5
    invoke-virtual {v15}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getComboHit()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v15, v10}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-wide/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    iput-object v14, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->e:Ljava/lang/Object;

    iput-object v15, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->f:Ljava/lang/Object;

    iput-object v9, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->g:Ljava/lang/Object;

    iput-object v8, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->h:Ljava/lang/Object;

    iput v7, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->a:I

    iput v2, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->b:I

    iput v5, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->i:I

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v20, v12

    move-wide/from16 v12, v16

    move-object/from16 v17, v14

    move-object/from16 v14, v20

    move-object/from16 v21, v15

    move/from16 v15, v18

    move-object/from16 v16, v19

    invoke-static/range {v10 .. v16}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->F(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_4

    return-object v1

    :cond_4
    move-object/from16 v11, v17

    move-object/from16 v12, v20

    move-object/from16 v10, v21

    :goto_1
    move-object v15, v10

    move-object v14, v11

    goto/16 :goto_6

    :cond_5
    move-object/from16 v20, v12

    move-object/from16 v17, v14

    move-object/from16 v21, v15

    const/4 v10, 0x4

    move-object v15, v8

    move-object v14, v9

    move-object/from16 v11, v17

    move-object/from16 v13, v21

    move v8, v2

    move v9, v7

    const/4 v2, 0x0

    const/4 v7, 0x4

    :goto_2
    if-ge v2, v7, :cond_7

    .line 6
    invoke-virtual {v15}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getComboHit()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v15, v10}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-wide/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    iput-object v11, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->e:Ljava/lang/Object;

    iput-object v13, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->f:Ljava/lang/Object;

    iput-object v14, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->g:Ljava/lang/Object;

    iput-object v15, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->h:Ljava/lang/Object;

    iput v9, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->a:I

    iput v8, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->b:I

    iput v7, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->c:I

    iput v2, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->d:I

    iput v3, v12, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->i:I

    move-object v10, v11

    move-object/from16 v20, v11

    move-object v11, v15

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-wide/from16 v12, v16

    move-object/from16 v17, v14

    move-object/from16 v14, v21

    move-object/from16 v23, v15

    move/from16 v15, v18

    move-object/from16 v16, v19

    invoke-static/range {v10 .. v16}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->F(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object/from16 v14, v17

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v15, v23

    :goto_3
    add-int/2addr v2, v6

    goto :goto_2

    :cond_7
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v17, v14

    move-object/from16 v23, v15

    move v2, v8

    move v7, v9

    move-object/from16 v9, v17

    move-object/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_8
    move-object/from16 v20, v12

    move-object/from16 v17, v14

    move-object/from16 v21, v15

    move-object v10, v8

    move-object v15, v9

    move-object/from16 v12, v17

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move v8, v2

    move v9, v7

    const/4 v2, 0x0

    const/4 v7, 0x3

    :goto_4
    if-ge v2, v7, :cond_a

    .line 7
    invoke-virtual {v15}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getComboHit()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v15, v11}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->setComboHit(I)V

    const-wide/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    iput-object v12, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->e:Ljava/lang/Object;

    iput-object v14, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->f:Ljava/lang/Object;

    iput-object v15, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->g:Ljava/lang/Object;

    iput-object v10, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->h:Ljava/lang/Object;

    iput v9, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->a:I

    iput v8, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->b:I

    iput v7, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->c:I

    iput v2, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->d:I

    iput v6, v13, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil$c;->i:I

    move-object v11, v12

    move-object/from16 v20, v12

    move-object v12, v15

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-wide/from16 v13, v16

    move-object/from16 v23, v15

    move-object/from16 v15, v21

    move/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v11 .. v17}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->F(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_9

    return-object v1

    :cond_9
    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    :goto_5
    add-int/2addr v2, v6

    goto :goto_4

    :cond_a
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move v2, v8

    move v7, v9

    move-object v8, v10

    move-object/from16 v14, v20

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-object/from16 v9, v23

    :goto_6
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 8
    :cond_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
