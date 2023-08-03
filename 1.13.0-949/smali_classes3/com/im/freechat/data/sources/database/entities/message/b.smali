.class public final synthetic Lcom/im/freechat/data/sources/database/entities/message/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->a:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput-wide p2, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->b:J

    iput-wide p4, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->c:J

    iput-wide p6, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->a:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->b:J

    iget-wide v3, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->c:J

    iget-wide v5, p0, Lcom/im/freechat/data/sources/database/entities/message/b;->d:J

    move-object v7, p1

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->a(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
