local status_ok, neogen = pcall(require, 'neogen')

if not status_ok then
    print('neogen is not installed')
    return
end

neogen.setup()
