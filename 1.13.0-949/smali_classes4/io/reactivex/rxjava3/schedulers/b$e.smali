.class final Lio/reactivex/rxjava3/schedulers/b$e;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/h;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/h;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/schedulers/b$e;->a:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
