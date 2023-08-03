.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$a;
.super Ljava/lang/Object;
.source "BaseMvvmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->values()[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Url:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Message:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Room:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
