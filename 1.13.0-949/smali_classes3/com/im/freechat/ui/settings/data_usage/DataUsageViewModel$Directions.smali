.class public final enum Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;
.super Ljava/lang/Enum;
.source "DataUsageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Directions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;",
        "",
        "(Ljava/lang/String;I)V",
        "app_prodRelease"
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
.field private static final synthetic a:[Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;->a()[Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;->a:[Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;
    .locals 1

    const-class v0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;
    .locals 1

    sget-object v0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;->a:[Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;

    return-object v0
.end method
