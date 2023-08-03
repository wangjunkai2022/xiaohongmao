.class public final enum Lcom/rudresh/videocompression/videocompression/QualityPreset;
.super Ljava/lang/Enum;
.source "QualityPreset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rudresh/videocompression/videocompression/QualityPreset;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HIGH:Lcom/rudresh/videocompression/videocompression/QualityPreset;

.field public static final enum LOW:Lcom/rudresh/videocompression/videocompression/QualityPreset;

.field public static final enum MEDIUM:Lcom/rudresh/videocompression/videocompression/QualityPreset;

.field private static final synthetic a:[Lcom/rudresh/videocompression/videocompression/QualityPreset;


# instance fields
.field public final baseBitrate:I

.field public final baseFps:I

.field public final baseSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcom/rudresh/videocompression/videocompression/QualityPreset;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/16 v3, 0x780

    const v4, 0x67c280

    const/16 v5, 0x1e

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/rudresh/videocompression/videocompression/QualityPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/rudresh/videocompression/videocompression/QualityPreset;->HIGH:Lcom/rudresh/videocompression/videocompression/QualityPreset;

    .line 2
    new-instance v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;

    const-string v8, "MEDIUM"

    const/4 v9, 0x1

    const/16 v10, 0x500

    const/high16 v11, 0x280000

    const/16 v12, 0x1e

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/rudresh/videocompression/videocompression/QualityPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->MEDIUM:Lcom/rudresh/videocompression/videocompression/QualityPreset;

    .line 3
    new-instance v1, Lcom/rudresh/videocompression/videocompression/QualityPreset;

    const-string v14, "LOW"

    const/4 v15, 0x2

    const/16 v16, 0x280

    const v17, 0xf4240

    const/16 v18, 0x1e

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/rudresh/videocompression/videocompression/QualityPreset;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/rudresh/videocompression/videocompression/QualityPreset;->LOW:Lcom/rudresh/videocompression/videocompression/QualityPreset;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/rudresh/videocompression/videocompression/QualityPreset;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 4
    sput-object v2, Lcom/rudresh/videocompression/videocompression/QualityPreset;->a:[Lcom/rudresh/videocompression/videocompression/QualityPreset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p4, p0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->baseBitrate:I

    .line 3
    iput p3, p0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->baseSide:I

    .line 4
    iput p5, p0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->baseFps:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rudresh/videocompression/videocompression/QualityPreset;
    .locals 1

    const-class v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rudresh/videocompression/videocompression/QualityPreset;

    return-object p0
.end method

.method public static values()[Lcom/rudresh/videocompression/videocompression/QualityPreset;
    .locals 1

    sget-object v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->a:[Lcom/rudresh/videocompression/videocompression/QualityPreset;

    invoke-virtual {v0}, [Lcom/rudresh/videocompression/videocompression/QualityPreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rudresh/videocompression/videocompression/QualityPreset;

    return-object v0
.end method
