.class Lcom/posthog/android/x$a;
.super Ljava/lang/Object;
.source "ValueMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/posthog/android/x;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/posthog/android/b;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Lcom/posthog/android/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/posthog/android/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/posthog/android/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/posthog/android/x$a;->b:Lcom/posthog/android/b;

    .line 3
    invoke-static {p1, p4}, Lcom/posthog/android/internal/Utils;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/x$a;->a:Landroid/content/SharedPreferences;

    .line 4
    iput-object p3, p0, Lcom/posthog/android/x$a;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/posthog/android/x$a;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map;)Lcom/posthog/android/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/x$a;->d:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/posthog/android/x;->b(Ljava/util/Map;Ljava/lang/Class;)Lcom/posthog/android/x;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/posthog/android/x$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/posthog/android/x$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method c()Lcom/posthog/android/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/x$a;->e:Lcom/posthog/android/x;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/posthog/android/x$a;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/posthog/android/x$a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/posthog/android/x$a;->b:Lcom/posthog/android/b;

    invoke-virtual {v1, v0}, Lcom/posthog/android/b;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/posthog/android/x$a;->a(Ljava/util/Map;)Lcom/posthog/android/x;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/x$a;->e:Lcom/posthog/android/x;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v2

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/posthog/android/x$a;->e:Lcom/posthog/android/x;

    return-object v0
.end method

.method d()Z
    .locals 2

    iget-object v0, p0, Lcom/posthog/android/x$a;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/posthog/android/x$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method e(Lcom/posthog/android/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/posthog/android/x$a;->e:Lcom/posthog/android/x;

    .line 2
    iget-object v0, p0, Lcom/posthog/android/x$a;->b:Lcom/posthog/android/b;

    invoke-virtual {v0, p1}, Lcom/posthog/android/b;->i(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/posthog/android/x$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/posthog/android/x$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
