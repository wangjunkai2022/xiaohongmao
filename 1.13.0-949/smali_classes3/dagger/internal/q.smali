.class public final Ldagger/internal/q;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements Lu7/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu7/c<",
        "Ld6/e<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/internal/q;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lu7/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu7/c<",
            "TT;>;)",
            "Lu7/c<",
            "Ld6/e<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/q;

    invoke-static {p0}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu7/c;

    invoke-direct {v0, p0}, Ldagger/internal/q;-><init>(Lu7/c;)V

    return-object v0
.end method


# virtual methods
.method public b()Ld6/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld6/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/q;->a:Lu7/c;

    invoke-static {v0}, Ldagger/internal/g;->a(Lu7/c;)Ld6/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/internal/q;->b()Ld6/e;

    move-result-object v0

    return-object v0
.end method
