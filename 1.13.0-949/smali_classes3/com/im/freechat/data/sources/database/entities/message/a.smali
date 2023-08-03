.class public final synthetic Lcom/im/freechat/data/sources/database/entities/message/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->a:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput p2, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->b:I

    iput p3, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->c:I

    iput-wide p4, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->a:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iget v1, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->b:I

    iget v2, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->c:I

    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/a;->d:J

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->c(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
