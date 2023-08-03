.class public final Lcom/im/freechat/domain/usecase/messages/j$a;
.super Ljava/lang/Object;
.source "SendMessageInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/domain/usecase/messages/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001a\u0012\u0014\u0008\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\u001f\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u001a\u00a2\u0006\u0004\u0008%\u0010&R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0015\u001a\u0004\u0008\u000f\u0010\u0016R\u001d\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0003\u0010\u0012R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0018\u0010\u001dR#\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001b\u0010\"R\u0017\u0010$\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001c\u001a\u0004\u0008 \u0010\u001d\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/messages/j$a;",
        "",
        "",
        "a",
        "I",
        "b",
        "()I",
        "chatId",
        "",
        "Ljava/lang/String;",
        "h",
        "()Ljava/lang/String;",
        "text",
        "",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "c",
        "Ljava/util/List;",
        "d",
        "()Ljava/util/List;",
        "linkedMessages",
        "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
        "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
        "()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
        "linkedMessageType",
        "e",
        "attachments",
        "",
        "f",
        "Z",
        "()Z",
        "mentionAll",
        "",
        "g",
        "Ljava/util/Map;",
        "()Ljava/util/Map;",
        "mentioned",
        "removeOnFail",
        "<init>",
        "(ILjava/lang/String;Ljava/util/List;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/util/List;ZLjava/util/Map;Z)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Z

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/util/List;ZLjava/util/Map;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;",
            "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "linkedMessages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mentioned"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->d:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->e:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->f:Z

    .line 8
    iput-object p7, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->g:Ljava/util/Map;

    .line 9
    iput-boolean p8, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/util/List;ZLjava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 12
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    .line 13
    invoke-direct/range {v2 .. v10}, Lcom/im/freechat/domain/usecase/messages/j$a;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/util/List;ZLjava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->a:I

    return v0
.end method

.method public final c()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->d:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->f:Z

    return v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->h:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/j$a;->b:Ljava/lang/String;

    return-object v0
.end method
