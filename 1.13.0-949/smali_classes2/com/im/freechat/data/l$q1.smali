.class final Lcom/im/freechat/data/l$q1;
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
    value = "SMAP\nSyncRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl$uploadAttachments$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1027:1\n1549#2:1028\n1620#2,3:1029\n*S KotlinDebug\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl$uploadAttachments$4\n*L\n411#1:1028\n411#1:1029,3\n*E\n"
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
    c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$4"
    f = "SyncRepositoryImpl.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x191,
        0x197,
        0x19a
    }
    m = "invokeSuspend"
    n = {
        "it",
        "file",
        "it",
        "file",
        "url",
        "it",
        "previewUrl"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
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
            "Lcom/im/freechat/data/l$q1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$q1;->e:Lcom/im/freechat/data/l;

    iput-object p2, p0, Lcom/im/freechat/data/l$q1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/im/freechat/data/l$q1;

    iget-object v0, p0, Lcom/im/freechat/data/l$q1;->e:Lcom/im/freechat/data/l;

    iget-object v1, p0, Lcom/im/freechat/data/l$q1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p3}, Lcom/im/freechat/data/l$q1;-><init>(Lcom/im/freechat/data/l;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$q1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/l$q1;->h(Lkotlinx/coroutines/s0;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 1
    iget v0, v7, Lcom/im/freechat/data/l$q1;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, v7, Lcom/im/freechat/data/l$q1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/im/freechat/data/l$q1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v7, Lcom/im/freechat/data/l$q1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v7, Lcom/im/freechat/data/l$q1;->a:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v6, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v6

    goto/16 :goto_2

    :cond_2
    iget-object v0, v7, Lcom/im/freechat/data/l$q1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object v3, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    move-object/from16 v3, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 4
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v9, v7, Lcom/im/freechat/data/l$q1;->e:Lcom/im/freechat/data/l;

    invoke-static {v9}, Lcom/im/freechat/data/l;->a0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/openapigen/api/FileApi;

    move-result-object v9

    new-instance v10, Lcom/im/freechat/data/l$q1$b;

    invoke-direct {v10, v6, v5}, Lcom/im/freechat/data/l$q1$b;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    iput-object v6, v7, Lcom/im/freechat/data/l$q1;->a:Ljava/lang/Object;

    iput v3, v7, Lcom/im/freechat/data/l$q1;->c:I

    invoke-static {v9, v10, v7}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_4

    return-object v8

    :cond_4
    move-object/from16 v33, v6

    move-object v6, v0

    move-object/from16 v0, v33

    :goto_0
    check-cast v3, Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;

    invoke-virtual {v3}, Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;->getData()Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 7
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    invoke-static {v0}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 8
    sget-object v11, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v11, v10}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v10

    goto :goto_1

    :cond_5
    move-object v10, v5

    .line 9
    :goto_1
    invoke-virtual {v9, v0, v10}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v9

    .line 10
    sget-object v10, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uploading Attachment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v10, v7, Lcom/im/freechat/data/l$q1;->e:Lcom/im/freechat/data/l;

    invoke-static {v10}, Lcom/im/freechat/data/l;->f0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/api/RemoteApi;

    move-result-object v10

    new-instance v11, Lcom/im/freechat/data/l$q1$a;

    invoke-direct {v11, v3, v9, v5}, Lcom/im/freechat/data/l$q1$a;-><init>(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    iput-object v0, v7, Lcom/im/freechat/data/l$q1;->a:Ljava/lang/Object;

    iput-object v3, v7, Lcom/im/freechat/data/l$q1;->b:Ljava/lang/Object;

    iput v4, v7, Lcom/im/freechat/data/l$q1;->c:I

    invoke-static {v10, v11, v7}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v8, :cond_6

    return-object v8

    :cond_6
    move-object v9, v6

    move-object/from16 v33, v3

    move-object v3, v0

    move-object/from16 v0, v33

    .line 12
    :goto_2
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, v7, Lcom/im/freechat/data/l$q1;->e:Lcom/im/freechat/data/l;

    iget-object v10, v7, Lcom/im/freechat/data/l$q1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v11, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v12, "Attachment upload success!"

    invoke-virtual {v11, v12, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "?"

    .line 13
    invoke-static {v0, v1, v5, v4, v5}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-static {v6}, Lcom/im/freechat/data/l;->Y(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    move-result-object v0

    invoke-virtual {v9}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    iput-object v9, v7, Lcom/im/freechat/data/l$q1;->d:Ljava/lang/Object;

    iput-object v10, v7, Lcom/im/freechat/data/l$q1;->a:Ljava/lang/Object;

    iput-object v11, v7, Lcom/im/freechat/data/l$q1;->b:Ljava/lang/Object;

    iput v2, v7, Lcom/im/freechat/data/l$q1;->c:I

    move-wide v1, v4

    move-object v3, v11

    move-wide v4, v12

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->updateRemoteUrl(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_7

    return-object v8

    :cond_7
    move-object v2, v9

    move-object v1, v10

    move-object v0, v11

    .line 15
    :goto_3
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 18
    move-object v12, v5

    check-cast v12, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 19
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v5

    invoke-virtual {v12}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_8

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, 0xffef

    const/16 v32, 0x0

    move-object/from16 v19, v0

    .line 20
    invoke-static/range {v12 .. v32}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object v12

    .line 21
    :cond_8
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_9
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
