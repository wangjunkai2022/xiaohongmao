.class public final enum Lio/reactivex/rxjava3/annotations/BackpressureKind;
.super Ljava/lang/Enum;
.source "BackpressureKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/rxjava3/annotations/BackpressureKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lio/reactivex/rxjava3/annotations/BackpressureKind;

.field public static final enum FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;

.field public static final enum NONE:Lio/reactivex/rxjava3/annotations/BackpressureKind;

.field public static final enum PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;

.field public static final enum SPECIAL:Lio/reactivex/rxjava3/annotations/BackpressureKind;

.field public static final enum UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;

.field private static final synthetic a:[Lio/reactivex/rxjava3/annotations/BackpressureKind;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const-string v1, "PASS_THROUGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const-string v3, "FULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/reactivex/rxjava3/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;

    .line 3
    new-instance v3, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const-string v5, "SPECIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/reactivex/rxjava3/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/reactivex/rxjava3/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/rxjava3/annotations/BackpressureKind;

    .line 4
    new-instance v5, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const-string v7, "UNBOUNDED_IN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/reactivex/rxjava3/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;

    .line 5
    new-instance v7, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/reactivex/rxjava3/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/reactivex/rxjava3/annotations/BackpressureKind;->ERROR:Lio/reactivex/rxjava3/annotations/BackpressureKind;

    .line 6
    new-instance v9, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const-string v11, "NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/reactivex/rxjava3/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/reactivex/rxjava3/annotations/BackpressureKind;->NONE:Lio/reactivex/rxjava3/annotations/BackpressureKind;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/reactivex/rxjava3/annotations/BackpressureKind;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lio/reactivex/rxjava3/annotations/BackpressureKind;->a:[Lio/reactivex/rxjava3/annotations/BackpressureKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/annotations/BackpressureKind;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/annotations/BackpressureKind;->a:[Lio/reactivex/rxjava3/annotations/BackpressureKind;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/annotations/BackpressureKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/annotations/BackpressureKind;

    return-object v0
.end method