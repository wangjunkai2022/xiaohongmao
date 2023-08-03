.class public final enum Leltos/simpledialogfragment/list/ClearableEditText$Location;
.super Ljava/lang/Enum;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leltos/simpledialogfragment/list/ClearableEditText$Location;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LEFT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

.field public static final enum RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

.field private static final synthetic b:[Leltos/simpledialogfragment/list/ClearableEditText$Location;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Leltos/simpledialogfragment/list/ClearableEditText$Location;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Leltos/simpledialogfragment/list/ClearableEditText$Location;-><init>(Ljava/lang/String;II)V

    sput-object v0, Leltos/simpledialogfragment/list/ClearableEditText$Location;->LEFT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    new-instance v1, Leltos/simpledialogfragment/list/ClearableEditText$Location;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Leltos/simpledialogfragment/list/ClearableEditText$Location;-><init>(Ljava/lang/String;II)V

    sput-object v1, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    new-array v3, v5, [Leltos/simpledialogfragment/list/ClearableEditText$Location;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Leltos/simpledialogfragment/list/ClearableEditText$Location;->b:[Leltos/simpledialogfragment/list/ClearableEditText$Location;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Leltos/simpledialogfragment/list/ClearableEditText$Location;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leltos/simpledialogfragment/list/ClearableEditText$Location;
    .locals 1

    const-class v0, Leltos/simpledialogfragment/list/ClearableEditText$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/list/ClearableEditText$Location;

    return-object p0
.end method

.method public static values()[Leltos/simpledialogfragment/list/ClearableEditText$Location;
    .locals 1

    sget-object v0, Leltos/simpledialogfragment/list/ClearableEditText$Location;->b:[Leltos/simpledialogfragment/list/ClearableEditText$Location;

    invoke-virtual {v0}, [Leltos/simpledialogfragment/list/ClearableEditText$Location;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leltos/simpledialogfragment/list/ClearableEditText$Location;

    return-object v0
.end method
