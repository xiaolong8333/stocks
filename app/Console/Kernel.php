<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        \App\Console\Commands\UpdateForeignExchange::class,
        \App\Console\Commands\CreateOrClose::class,
        \App\Console\Commands\ProfitLose::class
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')
        //          ->hourly();
        $schedule->command('profitlose')//Test.php中的name
        ->everyMinute();//每1分钟执行一次
        $schedule->command('createorclose')//Test.php中的name
        ->everyMinute();//每1分钟执行一次
        $schedule->command('updateforeignexchange')//Test.php中的name
        ->everyMinute();//每1分钟执行一次
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
