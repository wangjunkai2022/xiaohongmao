.class final enum Leltos/simpledialogfragment/color/ColorWheelView$e;
.super Ljava/lang/Enum;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leltos/simpledialogfragment/color/ColorWheelView$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leltos/simpledialogfragment/color/ColorWheelView$e;

.field public static final enum b:Leltos/simpledialogfragment/color/ColorWheelView$e;

.field public static final enum c:Leltos/simpledialogfragment/color/ColorWheelView$e;

.field public static final enum d:Leltos/simpledialogfragment/color/ColorWheelView$e;

.field private static final synthetic e:[Leltos/simpledialogfragment/color/ColorWheelView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leltos/simpledialogfragment/color/ColorWheelView$e;->a:Leltos/simpledialogfragment/color/ColorWheelView$e;

    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$e;

    const-string v3, "TRIANGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leltos/simpledialogfragment/color/ColorWheelView$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leltos/simpledialogfragment/color/ColorWheelView$e;->b:Leltos/simpledialogfragment/color/ColorWheelView$e;

    new-instance v3, Leltos/simpledialogfragment/color/ColorWheelView$e;

    const-string v5, "SUGGESTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leltos/simpledialogfragment/color/ColorWheelView$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leltos/simpledialogfragment/color/ColorWheelView$e;->c:Leltos/simpledialogfragment/color/ColorWheelView$e;

    new-instance v5, Leltos/simpledialogfragment/color/ColorWheelView$e;

    const-string v7, "HUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leltos/simpledialogfragment/color/ColorWheelView$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leltos/simpledialogfragment/color/ColorWheelView$e;->d:Leltos/simpledialogfragment/color/ColorWheelView$e;

    const/4 v7, 0x4

    new-array v7, v7, [Leltos/simpledialogfragment/color/ColorWheelView$e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Leltos/simpledialogfragment/color/ColorWheelView$e;->e:[Leltos/simpledialogfragment/color/ColorWheelView$e;

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

.method public static valueOf(Ljava/lang/String;)Leltos/simpledialogfragment/color/ColorWheelView$e;
    .locals 1

    const-class v0, Leltos/simpledialogfragment/color/ColorWheelView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/color/ColorWheelView$e;

    return-object p0
.end method

.method public static values()[Leltos/simpledialogfragment/color/ColorWheelView$e;
    .locals 1

    sget-object v0, Leltos/simpledialogfragment/color/ColorWheelView$e;->e:[Leltos/simpledialogfragment/color/ColorWheelView$e;

    invoke-virtual {v0}, [Leltos/simpledialogfragment/color/ColorWheelView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leltos/simpledialogfragment/color/ColorWheelView$e;

    return-object v0
.end method
