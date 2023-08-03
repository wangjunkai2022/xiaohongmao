.class public final enum Leltos/simpledialogfragment/color/ColorView$Style;
.super Ljava/lang/Enum;
.source "ColorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leltos/simpledialogfragment/color/ColorView$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECK:Leltos/simpledialogfragment/color/ColorView$Style;

.field public static final enum PALETTE:Leltos/simpledialogfragment/color/ColorView$Style;

.field private static final synthetic a:[Leltos/simpledialogfragment/color/ColorView$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Leltos/simpledialogfragment/color/ColorView$Style;

    const-string v1, "CHECK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leltos/simpledialogfragment/color/ColorView$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leltos/simpledialogfragment/color/ColorView$Style;->CHECK:Leltos/simpledialogfragment/color/ColorView$Style;

    new-instance v1, Leltos/simpledialogfragment/color/ColorView$Style;

    const-string v3, "PALETTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leltos/simpledialogfragment/color/ColorView$Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leltos/simpledialogfragment/color/ColorView$Style;->PALETTE:Leltos/simpledialogfragment/color/ColorView$Style;

    const/4 v3, 0x2

    new-array v3, v3, [Leltos/simpledialogfragment/color/ColorView$Style;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Leltos/simpledialogfragment/color/ColorView$Style;->a:[Leltos/simpledialogfragment/color/ColorView$Style;

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

.method public static valueOf(Ljava/lang/String;)Leltos/simpledialogfragment/color/ColorView$Style;
    .locals 1

    const-class v0, Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/color/ColorView$Style;

    return-object p0
.end method

.method public static values()[Leltos/simpledialogfragment/color/ColorView$Style;
    .locals 1

    sget-object v0, Leltos/simpledialogfragment/color/ColorView$Style;->a:[Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-virtual {v0}, [Leltos/simpledialogfragment/color/ColorView$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leltos/simpledialogfragment/color/ColorView$Style;

    return-object v0
.end method
