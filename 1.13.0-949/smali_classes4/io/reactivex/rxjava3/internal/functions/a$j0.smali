.class final Lio/reactivex/rxjava3/internal/functions/a$j0;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lq7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/functions/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/b<",
        "Ljava/util/Map<",
        "TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field private final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lq7/o;Lq7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "valueSelector",
            "keySelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-TT;+TV;>;",
            "Lq7/o<",
            "-TT;+TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/functions/a$j0;->a:Lq7/o;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/functions/a$j0;->b:Lq7/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/functions/a$j0;->b:Lq7/o;

    invoke-interface {v0, p2}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/functions/a$j0;->a:Lq7/o;

    invoke-interface {v1, p2}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "m",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/functions/a$j0;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method
