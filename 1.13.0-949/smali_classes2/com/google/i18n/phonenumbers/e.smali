.class final Lcom/google/i18n/phonenumbers/e;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/e$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field static final b:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto"

.field private static final c:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field private static final d:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"

.field static final e:Lcom/google/i18n/phonenumbers/d;

.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/i18n/phonenumbers/e$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/e$a;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->e:Lcom/google/i18n/phonenumbers/d;

    .line 2
    const-class v0, Lcom/google/i18n/phonenumbers/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->f:Ljava/util/logging/Logger;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-static {}, Lcom/google/i18n/phonenumbers/a;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->i:Ljava/util/Set;

    .line 6
    invoke-static {}, Lcom/google/i18n/phonenumbers/j;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/e;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/i18n/phonenumbers/e;->d(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/i18n/phonenumbers/e;->i:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/google/i18n/phonenumbers/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/google/i18n/phonenumbers/e;->e:Lcom/google/i18n/phonenumbers/d;

    const-string v2, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-static {p0, v0, v2, v1}, Lcom/google/i18n/phonenumbers/e;->c(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/d;",
            ")",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2, p3}, Lcom/google/i18n/phonenumbers/e;->d(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Ljava/util/List;

    move-result-object p3

    .line 4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/google/i18n/phonenumbers/e;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "more than one metadata in file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 7
    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    if-eqz p0, :cond_2

    move-object p2, p0

    :cond_2
    return-object p2
.end method

.method private static d(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/google/i18n/phonenumbers/d;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/e;->h(Ljava/io/InputStream;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static e(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/i18n/phonenumbers/e;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/e;->h:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/google/i18n/phonenumbers/e;->e:Lcom/google/i18n/phonenumbers/d;

    const-string v2, "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"

    invoke-static {p0, v0, v2, v1}, Lcom/google/i18n/phonenumbers/e;->c(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/i18n/phonenumbers/e$b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/d;",
            ")",
            "Lcom/google/i18n/phonenumbers/e$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/e$b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/google/i18n/phonenumbers/e$b;->c(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/e$b;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/e$b;

    return-object p0
.end method

.method static g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/i18n/phonenumbers/e;->j:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/io/InputStream;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 5

    const-string v0, "error closing input stream (ignored)"

    const-string v1, "cannot load/parse metadata"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v2, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v1, Lcom/google/i18n/phonenumbers/e;->f:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v2

    :catch_1
    move-exception v2

    .line 6
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v3

    .line 7
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    .line 8
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 10
    sget-object v2, Lcom/google/i18n/phonenumbers/e;->f:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_2
    throw v1
.end method
