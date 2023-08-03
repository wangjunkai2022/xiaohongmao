.class final Lcom/im/freechat/data/l$p1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->v0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/s0;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl$uploadAttachments$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1027:1\n1549#2:1028\n1620#2,3:1029\n*S KotlinDebug\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl$uploadAttachments$3\n*L\n389#1:1028\n389#1:1029,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "it",
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
    c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$3"
    f = "SyncRepositoryImpl.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x17e,
        0x181,
        0x184
    }
    m = "invokeSuspend"
    n = {
        "it",
        "file",
        "it",
        "url",
        "it",
        "previewUrl"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/im/freechat/data/l;

.field final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$p1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$p1;->e:Lcom/im/freechat/data/l;

    iput-object p2, p0, Lcom/im/freechat/data/l$p1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final h(Lkotlinx/coroutines/s0;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lcom/im/freechat/data/l$p1;

    iget-object v0, p0, Lcom/im/freechat/data/l$p1;->e:Lcom/im/freechat/data/l;

    iget-object v1, p0, Lcom/im/freechat/data/l$p1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p3}, Lcom/im/freechat/data/l$p1;-><init>(Lcom/im/freechat/data/l;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$p1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/l$p1;->h(Lkotlinx/coroutines/s0;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32
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
    iget v2, v0, Lcom/im/freechat/data/l$p1;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Lcom/im/freechat/data/l$p1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/im/freechat/data/l$p1;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/im/freechat/data/l$p1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/im/freechat/data/l$p1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v5, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v5

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 4
    new-instance v8, Ljava/io/File;

    .line 5
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v9

    sget-object v10, Lcom/im/freechat/shared/entities/message/Message$MediaType;->VIDEO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    if-eq v9, v10, :cond_5

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v9

    sget-object v10, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    if-ne v9, v10, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 7
    :cond_5
    :goto_0
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getPreviewLocalPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 8
    :cond_6
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v9, v0, Lcom/im/freechat/data/l$p1;->e:Lcom/im/freechat/data/l;

    invoke-static {v9}, Lcom/im/freechat/data/l;->a0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/openapigen/api/FileApi;

    move-result-object v9

    new-instance v10, Lcom/im/freechat/data/l$p1$b;

    invoke-direct {v10, v8, v7}, Lcom/im/freechat/data/l$p1$b;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/im/freechat/data/l$p1;->a:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/data/l$p1;->c:I

    invoke-static {v9, v10, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    move-object/from16 v31, v8

    move-object v8, v2

    move-object/from16 v2, v31

    :goto_1
    check-cast v5, Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;

    invoke-virtual {v5}, Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;->getData()Ljava/lang/String;

    move-result-object v5

    .line 10
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v10, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v11, "image/*"

    invoke-virtual {v10, v11}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 11
    sget-object v9, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uploading Preview: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v9, v0, Lcom/im/freechat/data/l$p1;->e:Lcom/im/freechat/data/l;

    invoke-static {v9}, Lcom/im/freechat/data/l;->f0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/api/RemoteApi;

    move-result-object v9

    new-instance v10, Lcom/im/freechat/data/l$p1$a;

    invoke-direct {v10, v5, v2, v7}, Lcom/im/freechat/data/l$p1$a;-><init>(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    iput-object v5, v0, Lcom/im/freechat/data/l$p1;->a:Ljava/lang/Object;

    iput v6, v0, Lcom/im/freechat/data/l$p1;->c:I

    invoke-static {v9, v10, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, v5

    move-object v5, v8

    .line 13
    :goto_2
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v8, v0, Lcom/im/freechat/data/l$p1;->e:Lcom/im/freechat/data/l;

    iget-object v9, v0, Lcom/im/freechat/data/l$p1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v10, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v11, "Preview upload success!"

    invoke-virtual {v10, v11, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "?"

    .line 14
    invoke-static {v2, v3, v7, v6, v7}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v8}, Lcom/im/freechat/data/l;->Y(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    move-result-object v3

    invoke-virtual {v5}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v6

    iput-object v5, v0, Lcom/im/freechat/data/l$p1;->d:Ljava/lang/Object;

    iput-object v9, v0, Lcom/im/freechat/data/l$p1;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/data/l$p1;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$p1;->c:I

    invoke-virtual {v3, v6, v7, v2, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->updatePreviewUrl(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v2

    move-object v3, v5

    move-object v2, v9

    .line 16
    :goto_3
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Iterable;

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 19
    move-object v10, v6

    check-cast v10, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 20
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v8

    cmp-long v11, v6, v8

    if-nez v11, :cond_a

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xfeff

    const/16 v30, 0x0

    move-object/from16 v21, v1

    .line 21
    invoke-static/range {v10 .. v30}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object v10

    .line 22
    :cond_a
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_b
    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
