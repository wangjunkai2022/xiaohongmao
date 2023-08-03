.class final enum Lio/reactivex/internal/operators/single/h0$e;
.super Ljava/lang/Enum;
.source "SingleInternalHelper.java"

# interfaces
.implements Ln7/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/single/h0$e;",
        ">;",
        "Ln7/o<",
        "Lio/reactivex/o0;",
        "Lio/reactivex/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/reactivex/internal/operators/single/h0$e;

.field private static final synthetic b:[Lio/reactivex/internal/operators/single/h0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/h0$e;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/h0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/operators/single/h0$e;->a:Lio/reactivex/internal/operators/single/h0$e;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/internal/operators/single/h0$e;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/reactivex/internal/operators/single/h0$e;->b:[Lio/reactivex/internal/operators/single/h0$e;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/h0$e;
    .locals 1

    const-class v0, Lio/reactivex/internal/operators/single/h0$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/single/h0$e;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/h0$e;
    .locals 1

    sget-object v0, Lio/reactivex/internal/operators/single/h0$e;->b:[Lio/reactivex/internal/operators/single/h0$e;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/h0$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/h0$e;

    return-object v0
.end method


# virtual methods
.method public a(Lio/reactivex/o0;)Lio/reactivex/z;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/v0;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/v0;-><init>(Lio/reactivex/o0;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/o0;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/h0$e;->a(Lio/reactivex/o0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
