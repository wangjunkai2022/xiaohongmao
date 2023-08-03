.class final Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UserDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.im.freechat.data.sources.database.entities.contact.UserDao"
    f = "UserDao.kt"
    i = {
        0x0
    }
    l = {
        0x47
    }
    m = "insertOrUpdate$suspendImpl"
    n = {
        "$this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->this$0:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->label:I

    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao$insertOrUpdate$3;->this$0:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate$suspendImpl(Lcom/im/freechat/data/sources/database/entities/contact/UserDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
