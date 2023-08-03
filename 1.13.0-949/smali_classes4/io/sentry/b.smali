.class public final Lio/sentry/b;
.super Ljava/lang/Object;
.source "Attachment.java"


# static fields
.field private static final h:Ljava/lang/String; = "event.attachment"

.field private static final i:Ljava/lang/String; = "event.view_hierarchy"


# instance fields
.field private a:[B
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lio/sentry/m1;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Z

.field private g:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/m1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lio/sentry/m1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/sentry/b;->a:[B

    .line 13
    iput-object p1, p0, Lio/sentry/b;->b:Lio/sentry/m1;

    .line 14
    iput-object p2, p0, Lio/sentry/b;->d:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lio/sentry/b;->e:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lio/sentry/b;->g:Ljava/lang/String;

    .line 17
    iput-boolean p5, p0, Lio/sentry/b;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v4, "event.attachment"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lio/sentry/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/sentry/b;->c:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lio/sentry/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/sentry/b;->b:Lio/sentry/m1;

    .line 25
    iput-object p3, p0, Lio/sentry/b;->e:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lio/sentry/b;->g:Ljava/lang/String;

    .line 27
    iput-boolean p5, p0, Lio/sentry/b;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "event.attachment"

    .line 29
    iput-object v0, p0, Lio/sentry/b;->g:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lio/sentry/b;->c:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lio/sentry/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lio/sentry/b;->b:Lio/sentry/m1;

    .line 33
    iput-object p3, p0, Lio/sentry/b;->e:Ljava/lang/String;

    .line 34
    iput-boolean p4, p0, Lio/sentry/b;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/sentry/b;->c:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lio/sentry/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lio/sentry/b;->b:Lio/sentry/m1;

    .line 39
    iput-object p3, p0, Lio/sentry/b;->e:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lio/sentry/b;->f:Z

    .line 41
    iput-object p5, p0, Lio/sentry/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1    # [B
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/b;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # [B
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/b;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # [B
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/sentry/b;->a:[B

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/sentry/b;->b:Lio/sentry/m1;

    .line 7
    iput-object p2, p0, Lio/sentry/b;->d:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lio/sentry/b;->e:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lio/sentry/b;->g:Ljava/lang/String;

    .line 10
    iput-boolean p5, p0, Lio/sentry/b;->f:Z

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1    # [B
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v4, "event.attachment"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lio/sentry/b;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a([B)Lio/sentry/b;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/b;

    const-string v1, "screenshot.png"

    const-string v2, "image/png"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/sentry/b;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static b(Lio/sentry/protocol/x;)Lio/sentry/b;
    .locals 7
    .annotation build Lm8/g;
    .end annotation

    new-instance v6, Lio/sentry/b;

    const-string v2, "view-hierarchy.json"

    const-string v3, "application/json"

    const-string v4, "event.view_hierarchy"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/b;-><init>(Lio/sentry/m1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/b;->a:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lio/sentry/m1;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/b;->b:Lio/sentry/m1;

    return-object v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/b;->f:Z

    return v0
.end method
