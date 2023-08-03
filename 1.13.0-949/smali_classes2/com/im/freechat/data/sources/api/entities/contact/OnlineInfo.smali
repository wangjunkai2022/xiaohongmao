.class public final Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;
.super Ljava/lang/Object;
.source "ContactResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0002\u0010\u0007R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;",
        "",
        "isOnline",
        "",
        "lastOnline",
        "",
        "(Ljava/lang/Integer;Ljava/lang/Long;)V",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getLastOnline",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isOnline:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final lastOnline:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "online"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "lastOnline"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;->isOnline:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;->lastOnline:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getLastOnline()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;->lastOnline:Ljava/lang/Long;

    return-object v0
.end method

.method public final isOnline()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;->isOnline:Ljava/lang/Integer;

    return-object v0
.end method
