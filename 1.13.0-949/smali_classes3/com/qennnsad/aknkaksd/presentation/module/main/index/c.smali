.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/index/c;
.super Ljava/lang/Object;
.source "AnchorTypeData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/index/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0003\u001a\u00020\u0000*\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;",
        "b",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/c$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No option"

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->VEGAN:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->VIP:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->NEARBY:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->HOT:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->FOLLOW:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/c$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No option"

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Vegan:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->VIP:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Nearby:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Hot:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Followed:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
