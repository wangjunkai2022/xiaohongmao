.class public final Lcom/im/freechat/shared/entities/Type$NicknameMask;
.super Lcom/im/freechat/shared/entities/Type;
.source "ChatMemberInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NicknameMask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/Type$NicknameMask;",
        "Lcom/im/freechat/shared/entities/Type;",
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
.field public static final INSTANCE:Lcom/im/freechat/shared/entities/Type$NicknameMask;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/shared/entities/Type$NicknameMask;

    invoke-direct {v0}, Lcom/im/freechat/shared/entities/Type$NicknameMask;-><init>()V

    sput-object v0, Lcom/im/freechat/shared/entities/Type$NicknameMask;->INSTANCE:Lcom/im/freechat/shared/entities/Type$NicknameMask;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/im/freechat/shared/entities/Type;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
