.class public final Lcom/im/freechat/shared/entities/LoggedOut;
.super Lcom/im/freechat/shared/entities/LoginState;
.source "LoginState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/LoggedOut;",
        "Lcom/im/freechat/shared/entities/LoginState;",
        "()V",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/im/freechat/shared/entities/LoggedOut;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/shared/entities/LoggedOut;

    invoke-direct {v0}, Lcom/im/freechat/shared/entities/LoggedOut;-><init>()V

    sput-object v0, Lcom/im/freechat/shared/entities/LoggedOut;->INSTANCE:Lcom/im/freechat/shared/entities/LoggedOut;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/im/freechat/shared/entities/LoginState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
