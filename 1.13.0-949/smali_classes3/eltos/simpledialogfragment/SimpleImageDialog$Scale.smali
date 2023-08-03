.class public final enum Leltos/simpledialogfragment/SimpleImageDialog$Scale;
.super Ljava/lang/Enum;
.source "SimpleImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/SimpleImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leltos/simpledialogfragment/SimpleImageDialog$Scale;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIT:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

.field public static final enum SCROLL_HORIZONTAL:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

.field public static final enum SCROLL_VERTICAL:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

.field private static final synthetic b:[Leltos/simpledialogfragment/SimpleImageDialog$Scale;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    const-string v1, "FIT"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Leltos/simpledialogfragment/SimpleImageDialog$Scale;-><init>(Ljava/lang/String;II)V

    sput-object v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->FIT:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    .line 2
    new-instance v1, Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    const-string v4, "SCROLL_HORIZONTAL"

    const/4 v5, 0x1

    const/16 v6, 0xa

    invoke-direct {v1, v4, v5, v6}, Leltos/simpledialogfragment/SimpleImageDialog$Scale;-><init>(Ljava/lang/String;II)V

    sput-object v1, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->SCROLL_HORIZONTAL:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    .line 3
    new-instance v4, Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    const-string v6, "SCROLL_VERTICAL"

    const/4 v7, 0x2

    const/16 v8, 0xb

    invoke-direct {v4, v6, v7, v8}, Leltos/simpledialogfragment/SimpleImageDialog$Scale;-><init>(Ljava/lang/String;II)V

    sput-object v4, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->SCROLL_VERTICAL:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    new-array v3, v3, [Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    .line 4
    sput-object v3, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->b:[Leltos/simpledialogfragment/SimpleImageDialog$Scale;

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
    iput p3, p0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leltos/simpledialogfragment/SimpleImageDialog$Scale;
    .locals 1

    const-class v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    return-object p0
.end method

.method public static values()[Leltos/simpledialogfragment/SimpleImageDialog$Scale;
    .locals 1

    sget-object v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->b:[Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    invoke-virtual {v0}, [Leltos/simpledialogfragment/SimpleImageDialog$Scale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    return-object v0
.end method
